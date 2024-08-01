<script>
  export let piece;

  const pieceImages = {
        'r': 'black-rook.png',
        'n': 'black-knight.png',
        'b': 'black-bishop.png',
        'q': 'black-queen.png',
        'k': 'black-king.png',
        'p': 'black-pawn.png',
        'R': 'white-rook.png',
        'N': 'white-knight.png',
        'B': 'white-bishop.png',
        'Q': 'white-queen.png',
        'K': 'white-king.png',
        'P': 'white-pawn.png'
    };
</script>

<img src={`../asset/piece/${pieceImages[piece]}`} alt={piece} />

<style>
    img {
        width: 100%;
        height: 100%;
    }
</style>
