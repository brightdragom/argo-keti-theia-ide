#!/bin/bash

# 파일 또는 디렉토리 경로 입력
read -p "전송할 파일 또는 디렉토리의 경로를 입력하세요: " PATH_TO_TRANSFER

# 파일 또는 디렉토리 존재 여부 확인
if [[ ! -e "$PATH_TO_TRANSFER" ]]; then
    echo "파일 또는 디렉토리가 존재하지 않습니다: $PATH_TO_TRANSFER"
    exit 1
fi

# 서버 정보 입력
read -p "서버 주소를 입력하세요 (예: user@hostname): " SERVER
read -p "서버에서 저장할 경로를 입력하세요 (예: /path/to/destination/): " DEST_PATH

# 파일 또는 디렉토리 전송
echo "파일 또는 디렉토리를 서버로 전송 중입니다..."

if [[ -d "$PATH_TO_TRANSFER" ]]; then
    # 디렉토리 전송
    scp -r "$PATH_TO_TRANSFER" "$SERVER:$DEST_PATH"
else
    # 파일 전송
    scp "$PATH_TO_TRANSFER" "$SERVER:$DEST_PATH"
fi

# 전송 결과 확인
if [[ $? -eq 0 ]]; then
    echo "전송이 완료되었습니다."
else
    echo "전송 중 오류가 발생했습니다."
    exit 2
fi
