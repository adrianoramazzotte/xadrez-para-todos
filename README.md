# Xadrez para Todos — Landing page para empresas incentivadoras

Página de captação de empresas incentivadoras do projeto **Xadrez para Todos**,
da **Associação Soberano Rei – Xadrez Arapongas** (CNPJ 52.542.855/0001-48),
credenciado pela Secretaria de Estado do Esporte do Paraná —
**Edital nº 06/2025, código 91327** — via **Proesporte**.

## O que é

Site estático de página única (`index.html`), sem dependências e sem build.
Basta abrir o arquivo no navegador ou publicar no GitHub Pages.

## Publicar no GitHub Pages

```bash
git init
git add .
git commit -m "Landing page do projeto Xadrez para Todos"
git branch -M main
git remote add origin https://github.com/<SEU-USUARIO>/xadrez-para-todos.git
git push -u origin main
```

Depois, no GitHub: **Settings → Pages → Source: Deploy from a branch → `main` / `(root)`**.
Em poucos minutos a página fica no ar em
`https://<SEU-USUARIO>.github.io/xadrez-para-todos/`.

## O que editar

| O quê | Onde |
|---|---|
| WhatsApp | trocar `5543999519210` (todas as ocorrências) |
| E-mail | trocar `anaufpr@hotmail.com` |
| Valor / nº de atendidos | seção `.stats` e seção `#projeto` |
| Cores | bloco `:root` no `<style>` (`--gold`, `--ink`, `--cream`) |
| Logos de patrocinadores | criar uma nova seção antes do `#contato` |

## Público

Somente empresas **contribuintes de ICMS**, **estabelecidas no Paraná** e
tributadas pelo **Lucro Real** podem destinar recursos via Proesporte.
Esse recorte está explícito no hero e na seção de elegibilidade.

## Fotos das competições

As galerias ficam em `galeria.html?c=<categoria>` e leem o arquivo `fotos/fotos.json`.

Pastas (uma por competição):

```
fotos/mundial/        Mundiais (ISF U15, Mundial de Cadetes FIDE)
fotos/pan/            Pan-Americanos
fotos/sulamericano/   Sul-Americanos
fotos/olimpiadas/     Olimpíadas
fotos/brasileiros/    Campeonatos brasileiros
```

**Para publicar fotos novas:**

1. Copie as imagens (`.jpg`, `.png`, `.webp`) para a pasta da competição.
2. Rode `./atualizar-fotos.sh` — ele varre as pastas e regenera `fotos/fotos.json`.
3. `git add -A && git commit -m "fotos" && git push`

Enquanto uma pasta estiver vazia, a galeria mostra o estado "Fotos em breve".
Prefira imagens já redimensionadas (largura de ~1600px) para a página carregar rápido.

## Contato

Ana Carmen Ramazzotte Monteiro — Presidente
(43) 99951-9210 · anaufpr@hotmail.com
