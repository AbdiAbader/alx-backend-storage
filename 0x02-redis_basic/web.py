import requests
import redis

redis_client = redis.Redis()

def get_page(url: str) -> str:
    count_key = f"count:{url}"
    html = redis_client.get(url)

    if html is None:
        response = requests.get(url)
        html = response.text
        redis_client.setex(url, 10, html)
    else:
        redis_client.incr(count_key)

    redis_client.expire(count_key, 10)

    return html
