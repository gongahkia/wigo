<script>
    import { board, selectedPiece, turn } from './Store.js';
    import { get } from 'svelte/store';
    import Piece from './Piece.svelte';

    export let row;
    export let col;
    export let piece;

    const handleSquareClick = () => {
        const currentTurn = get(turn);
        const currentBoard = get(board);
        const [selectedRow, selectedCol] = get(selectedPiece) || [null, null];
        const currentPiece = currentBoard[selectedRow]?.[selectedCol];

        if (selectedPiece && currentPiece) {
        // Move logic
        currentBoard[row][col] = currentPiece;
        currentBoard[selectedRow][selectedCol] = '';
        board.set(currentBoard);
        selectedPiece.set(null);
        turn.set(currentTurn === 'white' ? 'black' : 'white');
        } else if (piece) {
        selectedPiece.set([row, col]);
        }
    };
</script>

<div class="square" on:click={handleSquareClick}>
    {#if piece}
        <Piece {piece} />
    {/if}
</div>

<style>
    .square {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: var(--square-color);
        border: 1px solid black;
    }
    :global(.square:nth-child(even)) {
        --square-color: #f0d9b5;
    }
    :global(.square:nth-child(odd)) {
        --square-color: #b58863;
    }
    :global(.square:hover) {
        background-color: yellow;
    }
</style>
