<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cartão de Natal 🎄</title>
<style>
body{
  margin:0;
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  background:linear-gradient(#0b1d3a,#000);
  font-family: 'Segoe UI', sans-serif;
  overflow:hidden;
  color:#fff;
}

.card{
  text-align:center;
  max-width:420px;
  padding:20px;
  background:rgba(0,0,0,0.45);
  border-radius:20px;
  box-shadow:0 20px 40px rgba(0,0,0,.6);
}

.card img{
  width:100%;
  max-width:320px;
  border-radius:16px;
  cursor:pointer;
  transition:transform 1s;
}

.card img.rotate{
  transform:rotateY(360deg);
}

.message{
  margin-top:20px;
  display:none;
  line-height:1.4;
  animation:fadeIn 1.5s forwards;
}

@keyframes fadeIn{
  from{opacity:0; transform:translateY(20px)}
  to{opacity:1; transform:translateY(0)}
}

/* neve */
.snowflake{
  position:fixed;
  top:-10px;
  color:white;
  user-select:none;
  pointer-events:none;
  animation: fall linear infinite;
}

@keyframes fall{
  to{transform:translateY(110vh)}
}

.share{
  margin-top:20px;
  padding:10px 16px;
  border:none;
  border-radius:20px;
  background:#e63946;
  color:white;
  font-size:16px;
  cursor:pointer;
}
</style>
</head>
<body>

<div class="card">
  <h2>🎅 Clique no Charizard 🎁</h2>
  <img id="img" src="Charizard-noel.jpg" alt="Cartão de Natal" data-from="Yago">

  <div class="message" id="msg">
    <p><strong>Ho ho ho, Papai Noel chegou!</strong></p>
    <p>Feliz natal meu primo para você, para o pessoal aew e sua família, tudo bom hoje e sempre um próspero ano novo repleto de saúde, paz, dinheiro no bolso e na carteira haha.</p>
    <p>Obrigado por ser essa pessoa maravilhosa que és, obrigado por me acompanhar e até mesmo não deixar eu desistir ou cair nos meus dias mais sombrios.</p>
    <p>Enfim, agradeço você de coração por estar sempre ao meu lado e não és de hoje… te amo bochonha ❤️</p>
    <p><strong>Feliz Natal !!! 🎄✨</strong></p>
  </div>

  <button class="share" onclick="shareCard()">📤 Compartilhar cartão</button>
</div>

<script>
const img = document.getElementById('img');
const msg = document.getElementById('msg');

img.addEventListener('click',()=>{
  img.classList.add('rotate');
  msg.style.display='block';
  setTimeout(()=>img.classList.remove('rotate'),1000);
});

/* neve */
for(let i=0;i<40;i++){
  const snow=document.createElement('div');
  snow.innerHTML='❄';
  snow.className='snowflake';
  snow.style.left=Math.random()*100+'vw';
  snow.style.fontSize=(Math.random()*10+10)+'px';
  snow.style.animationDuration=(Math.random()*5+5)+'s';
  snow.style.opacity=Math.random();
  document.body.appendChild(snow);
}

/* compartilhar */
function shareCard(){
  const nome = 'Yago';
  const text = encodeURIComponent("🎄 Ho ho ho! O Yago te enviou um cartão de Natal especial 🎅✨

Abra pelo link e clique no Charizard 🎁👇
"("🎄 Ho ho ho! Te enviei um cartão de Natal especial 🎅✨

Clique no link para abrir:
" + window.location.href);
  const whatsappUrl = "https://wa.me/?text=" + text;
  window.open(whatsappUrl, '_blank');
}

</script>

</body>
</html>
