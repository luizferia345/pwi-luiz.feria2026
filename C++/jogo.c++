#include <iostream>
#include <vector>
#include <thread>
#include <chrono>
#include <conio.h>
#include <cstdlib>
#include <ctime>

using namespace std;

const int width = 10;
const int height = 20;

vector<vector<int>> board(height, vector<int>(width, 0));

// Tetrominos
vector<vector<vector<int>>> shapes = {
    {{1,1,1,1}},                  // I
    {{1,1},{1,1}},                // O
    {{0,1,0},{1,1,1}},            // T
    {{1,0,0},{1,1,1}},            // L
    {{0,0,1},{1,1,1}},            // J
    {{0,1,1},{1,1,0}},            // S
    {{1,1,0},{0,1,1}}             // Z
};

vector<vector<int>> current;
int currentX, currentY;

int score = 0;
int speed = 300;

// Rotação da peça
vector<vector<int>> rotate(vector<vector<int>> shape) {
    int h = shape.size();
    int w = shape[0].size();

    vector<vector<int>> rotated(w, vector<int>(h));

    for (int i = 0; i < h; i++)
        for (int j = 0; j < w; j++)
            rotated[j][h - 1 - i] = shape[i][j];

    return rotated;
}

// Nova peça aleatória
void spawn() {
    current = shapes[rand() % shapes.size()];
    currentX = width / 2 - current[0].size() / 2;
    currentY = 0;
}

// Colisão
bool collision(int x, int y, vector<vector<int>> shape) {
    for (int i = 0; i < shape.size(); i++) {
        for (int j = 0; j < shape[i].size(); j++) {
            if (shape[i][j]) {
                int nx = x + j;
                int ny = y + i;

                if (nx < 0 || nx >= width || ny >= height)
                    return true;

                if (ny >= 0 && board[ny][nx])
                    return true;
            }
        }
    }
    return false;
}

// Fixar peça
void place() {
    for (int i = 0; i < current.size(); i++)
        for (int j = 0; j < current[i].size(); j++)
            if (current[i][j])
                board[currentY + i][currentX + j] = 1;
}

// Limpar linhas
void clearLines() {
    for (int i = height - 1; i >= 0; i--) {
        bool full = true;

        for (int j = 0; j < width; j++) {
            if (!board[i][j]) {
                full = false;
                break;
            }
        }

        if (full) {
            board.erase(board.begin() + i);
            board.insert(board.begin(), vector<int>(width, 0));
            score += 100;
            i++;

            // acelera o jogo
            if (speed > 100) speed -= 10;
        }
    }
}

// Desenho
void draw() {
    system("cls");

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {

            bool isPiece = false;

            for (int pi = 0; pi < current.size(); pi++) {
                for (int pj = 0; pj < current[pi].size(); pj++) {
                    if (current[pi][pj]) {
                        if (i == currentY + pi && j == currentX + pj)
                            isPiece = true;
                    }
                }
            }

            if (board[i][j] || isPiece)
                cout << "#";
            else
                cout << ".";
        }
        cout << endl;
    }

    cout << "\nScore: " << score << endl;
    cout << "Controles: A D S W\n";
}

// MAIN
int main() {
    srand(time(0));
    spawn();

    while (true) {

        // INPUT
        if (_kbhit()) {
            char key = _getch();

            if (key == 'a' && !collision(currentX - 1, currentY, current))
                currentX--;

            else if (key == 'd' && !collision(currentX + 1, currentY, current))
                currentX++;

            else if (key == 's' && !collision(currentX, currentY + 1, current))
                currentY++;

            else if (key == 'w') {
                auto rotated = rotate(current);
                if (!collision(currentX, currentY, rotated))
                    current = rotated;
            }
        }

        // Gravidade
        if (!collision(currentX, currentY + 1, current)) {
            currentY++;
        } else {
            place();
            clearLines();
            spawn();

            if (collision(currentX, currentY, current)) {
                system("cls");
                cout << "GAME OVER\n";
                cout << "Score final: " << score << endl;
                break;
            }
        }

        draw();
        this_thread::sleep_for(chrono::milliseconds(speed));
    }

    return 0;
}