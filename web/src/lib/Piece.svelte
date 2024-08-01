<script>

  export let piece;
  const pieceImages = {
        'c': 'black_carp.png',
        'r': 'black_rook.png',
        'n': 'black_knight.png',
        'b': 'black_bishop.png',
        'q': 'black_queen.png',
        'k': 'black_king.png',
        'p': 'black_pawn.png',
        'R': 'white_rook.png',
        'N': 'white_knight.png',
        'B': 'white_bishop.png',
        'Q': 'white_queen.png',
        'K': 'white_king.png',
        'P': 'white_pawn.png',
        'C': 'white_carp.png'
    };

</script>

<img src={`../asset/piece/${pieceImages[piece]}`} alt={piece} />

<style>
    img {
        width: 100%;
        height: 100%;
    }
</style>