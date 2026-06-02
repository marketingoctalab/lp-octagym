// Gera config.js a partir da Environment Variable (Vercel/CI), sem commitar a chave.
const fs = require('fs');
const key = process.env.OCTA_MAPS_KEY || process.env.NEXT_PUBLIC_GOOGLE_MAPS_API_KEY || '';
fs.writeFileSync('config.js', 'window.OCTA_MAPS_KEY=' + JSON.stringify(key) + ';\n');
console.log(key ? 'config.js gerado com a chave do ambiente.' : 'AVISO: OCTA_MAPS_KEY ausente — o mapa nao vai carregar.');
