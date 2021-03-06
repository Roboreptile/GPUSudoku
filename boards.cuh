
#define N 9
#define NN 81

enum Difficulty {
    V_EASY,
    EASY,
    MEDIUM,
    HARD,
    EXTREME,
    MEMORY_TEST,
    UNSOLVABLE
};

class Board {
public:
    static int* get(Difficulty d, int count) {
        int* board;

        switch (d) {
        case V_EASY:
            board = new int[NN] {
                3, 0, 6, 5, 0, 8, 4, 0, 0,
                    5, 2, 0, 0, 0, 0, 0, 0, 0,
                    0, 8, 7, 0, 0, 0, 0, 3, 1,
                    0, 0, 3, 0, 1, 0, 0, 8, 0,
                    9, 0, 0, 8, 6, 3, 0, 0, 5,
                    0, 5, 0, 0, 9, 0, 6, 0, 0,
                    1, 3, 0, 0, 0, 0, 2, 5, 0,
                    0, 0, 0, 0, 0, 0, 0, 7, 4,
                    0, 0, 5, 2, 0, 6, 3, 0, 0
            };
            break;

        case EASY:
            board = new int[NN] {
                9, 0, 0, 5, 0, 0, 0, 6, 2,
                    0, 0, 0, 9, 3, 0, 8, 4, 0,
                    0, 7, 0, 0, 8, 0, 0, 0, 0,
                    0, 0, 0, 6, 0, 0, 2, 0, 0,
                    8, 0, 2, 0, 5, 0, 0, 0, 0,
                    0, 5, 7, 0, 0, 0, 0, 3, 8,
                    0, 3, 0, 0, 6, 4, 0, 0, 0,
                    7, 6, 9, 0, 1, 2, 5, 8, 0,
                    4, 0, 8, 0, 9, 5, 3, 1, 6
            };
            break;

        case MEDIUM:
            board = new int[NN] {
                3, 4, 0, 0, 0, 0, 0, 2, 1,
                    0, 0, 0, 1, 2, 0, 9, 3, 0,
                    1, 0, 0, 6, 0, 3, 0, 0, 0,
                    0, 5, 8, 0, 6, 0, 0, 0, 0,
                    0, 0, 0, 4, 1, 2, 8, 5, 6,
                    0, 0, 0, 0, 5, 0, 0, 0, 0,
                    8, 0, 0, 0, 3, 1, 5, 0, 7,
                    0, 6, 0, 5, 0, 0, 4, 1, 0,
                    5, 0, 0, 0, 0, 0, 0, 9, 0
            };
            break;

        case HARD:
            board = new int[NN] {
                0, 1, 0, 0, 0, 9, 2, 0, 0,
                    0, 0, 0, 0, 0, 7, 5, 0, 0,
                    0, 7, 9, 0, 0, 6, 0, 8, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 3, 0, 0, 0, 1, 0, 0, 6,
                    0, 9, 0, 0, 2, 0, 8, 0, 0,
                    7, 0, 5, 0, 0, 0, 0, 0, 0,
                    0, 8, 0, 0, 4, 0, 3, 0, 0,
                    3, 0, 0, 0, 1, 0, 0, 5, 0
            };
            break;
        case EXTREME:
            board = new int[NN] {
                0, 0, 0, 0, 0, 0, 0, 0, 2,
                    0, 8, 0, 0, 5, 0, 0, 0, 0,
                    7, 0, 0, 8, 0, 0, 0, 4, 9,
                    0, 0, 0, 0, 0, 0, 1, 0, 0,
                    0, 0, 6, 0, 0, 3, 0, 0, 0,
                    9, 0, 0, 5, 0, 0, 0, 7, 8,
                    0, 0, 9, 0, 6, 0, 0, 1, 4,
                    0, 0, 0, 4, 0, 0, 2, 0, 0,
                    1, 0, 0, 0, 0, 0, 5, 0, 0
            };
            break;

        case MEMORY_TEST:
            board = new int[NN] {
                0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0
            };
            break;
        //case UNSOLVABLE:
        default:
            board = new int[NN] {
                9, 9, 1, 0, 0, 0, 0, 0, 0,
                    1, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 5, 5, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 3, 3, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0
            };
            break;
        }
        int* boards = new int[NN * count];
        for (int i = 0; i < count; i++) {
            for (int j = 0; j < NN; j++) {
                boards[i * NN + j] = board[j];
            }
        }
        free(board);
        return boards;
    }
};