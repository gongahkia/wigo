<script>
    import { board } from './Store.js';
    import Square from './Square.svelte';
    import { get } from 'svelte/store';

    let squares = get(board);

    board.subscribe(value => {
        squares = value;
    });

    let boardSize = 8;
</script>

<div class="board">
    {#each { length: boardSize } as _, row}
        <div class="row">
            {#each { length: boardSize } as _, col}
                <Square {row} {col} piece={squares[row][col]} />
            {/each}
        </div>
    {/each}
</div>

<style>
    .board {
        display: grid;
        grid-template-columns: repeat(8, 1fr);
        width: 400px;
        height: 400px;
    }
    .row {
        display: contents;
    }
</style>
