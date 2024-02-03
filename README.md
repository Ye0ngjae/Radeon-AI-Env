# AI Notebook Docker Environment

Jupyter Notebook과 필요한 AI 라이브러리들을 포함한 Docker 환경을 제공합니다.

## 사용 방법

**1. 먼저 이 프로젝트를 로컬 시스템에 클론합니다.**

```bash
git clone https://github.com/your-github-username/your-repository-name.git
cd your-repository-name
```

**2. Docker와 Docker Compose가 설치되어 있는지 확인합니다. 설치되어 있지 않다면, 각각의 공식 웹사이트에서 다운로드 받을 수 있습니다.**

**3. 현재 디렉토리에서 Docker Compose를 실행합니다.**

```bash
docker-compose up
```

이 명령을 실행하면 Docker는 `Dockerfile`을 바탕으로 이미지를 빌드하고, `docker-compose.yml` 파일에 따라 컨테이너를 실행합니다.

**4. 브라우저를 열고 localhost:8888로 접속하면 Jupyter Notebook을 사용할 수 있습니다.**

포함된 라이브러리
이 Docker 이미지는 다음의 Python 라이브러리를 포함하고 있습니다:

- Jupyter
- TensorFlow
- scikit-learn
- pandas
- numpy
- matplotlib
- scipy
- seaborn
- opencv-python
- keras

## 주의사항
이 환경은 `jupyter notebook --allow-root` 명령을 사용하여 Jupyter Notebook을 실행합니다. 이는 Docker 컨테이너 내에서 root 권한을 가진 사용자로 Jupyter Notebook을 실행하겠다는 의미입니다.

또한, Docker 컨테이너의 `8888` 포트와 호스트 시스템의 `8888` 포트가 연결되어 있습니다. 따라서 **Jupyter Notebook은 호스트 시스템의 8888 포트를 통해 접근할 수 있습니다.**
