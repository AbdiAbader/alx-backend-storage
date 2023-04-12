import redis
import requests
from functools import wraps

redis_client = redis.Redis()

def cache_decorator(func):
    @wraps(func)
    def wrapper(url):
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

    return wrapper

@cache_decorator
def get_page(url: str) -> str:
    response = requests.get(url)
    return response.text

