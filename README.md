# Apko Images - Tooling diário

| Imagem       | Tag                         | Descrição                                      |
|--------------|-----------------------------|------------------------------------------------|
| apko-run     | fidelissauro/apko-run:latest-arm64 | Imagem `run` para arquitetura ARM64              |
| apko-run     | fidelissauro/apko-run:latest-amd64 | Imagem `run` para arquitetura AMD64              |
| apko-go      | fidelissauro/apko-go:latest-arm64  | Imagem `go` para arquitetura ARM64               |
| apko-go      | fidelissauro/apko-go:latest-amd64  | Imagem `go` para arquitetura AMD64               |
| apko-tools   | fidelissauro/apko-tools:latest-arm64 | Imagem `tools` para arquitetura ARM64             |
| apko-tools   | fidelissauro/apko-tools:latest-amd64 | Imagem `tools` para arquitetura AMD64             |

## Descrição das Imagens

### apko-run - Imagem base para rodar as apps já buildadas em golang
Imagens geradas a partir do arquivo `run/apko.yaml`:
- **fidelissauro/apko-run:latest-arm64**: Imagem para arquitetura ARM64.
- **fidelissauro/apko-run:latest-amd64**: Imagem para arquitetura AMD64.

### apko-go - Build de Golang
Imagens geradas a partir do arquivo `golang/apko.yaml`:
- **fidelissauro/apko-go:latest-arm64**: Imagem para arquitetura ARM64.
- **fidelissauro/apko-go:latest-amd64**: Imagem para arquitetura AMD64.

### apko-tools - Tooling para testes e tshoot
Imagens geradas a partir do arquivo `tools/apko.yaml`:
- **fidelissauro/apko-tools:latest-arm64**: Imagem para arquitetura ARM64.
- **fidelissauro/apko-tools:latest-amd64**: Imagem para arquitetura AMD64.
