# LP OctaGym × Ironberg Brasília

Landing page de captação (case ao vivo) do OctaGym.ai, operando a Ironberg Brasília.
Arquivo único `index.html` (HTML + CSS + JS), sem frameworks. Assets em `public/`.

## Seções
- Hero dark co-branded (OctaGym × Ironberg)
- Timeline "o case acontecendo agora"
- Console "Sistema ao vivo" (demonstração animada, dados ilustrativos)
- Infraestrutura / prova
- Endereço da unidade com efeito de satélite em loop (Google Maps)
- Formulário de lista de espera

## Configuração da chave do Google Maps (obrigatório p/ o mapa)
A chave **não** é commitada. Para rodar o efeito de satélite:

1. `cp config.example.js config.js`
2. Edite `config.js` com sua chave: `window.OCTA_MAPS_KEY = "SUA_CHAVE";`
3. No Google Cloud Console, **restrinja a chave por referrer (domínio)** e habilite só a *Maps JavaScript API*.

`config.js` está no `.gitignore`. Em deploy (Vercel/Netlify) crie o `config.js` no build/publish.

## Deploy
Estático: GitHub Pages, Vercel ou Netlify. `index.html` na raiz.
