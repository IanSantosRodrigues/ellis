# 1. Imagem Base
FROM python:3.11-slim-bookworm

# 2. Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# 3. Copiar o arquivo de dependências
COPY requirements.txt .

# 4. Instalar as dependências
RUN pip install --no-cache-dir --upgrade pip -r requirements.txt

# 5. Copiar o código da aplicação
COPY . .

# 6. Expor a porta que a aplicação usará
EXPOSE 8000

# 7. Comando para executar a aplicação
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]