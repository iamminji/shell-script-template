# Shell Example

## parser.sh

### match
properties 형식의 file을 읽어서, key 값에 해당하는 value 를 리턴
다른 셸에서 사용시, 셸 스크립트를 import 하고 함수 명을 작성해서 사용

> 이 떄 파일은 `properties` 형식이어야 하며, 가장 아랫 줄은 비어 있어야 한다.

```bash
. parser.sh

value=$(match ${file_path} ${key})
```

