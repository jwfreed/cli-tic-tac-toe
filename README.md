## INSTRUCTIONS

Once cloned, cd into the cli-tic-tac-toe directory and run `ruby tictactoe`

## RULES

Each player, 'X' or 'O', take turns selecting the space of their choice.
The board is a 3x3 grid, with each space corresponding to a number:

        1 | 2 | 3
        ----------
        4 | 5 | 6
        ----------
        7 | 8 | 9

A player is declared the winner if they can select three adjacent spaces:

        X | X | O               player 'X' is declared the winner
        ----------
        X | O | O
        ----------
        X |   |
