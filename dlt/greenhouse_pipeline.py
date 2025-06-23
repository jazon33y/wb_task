from typing import Any, Optional

import dlt
from dlt.sources.rest_api import (
    RESTAPIConfig,
    rest_api_resources
)


@dlt.source(name='greenhouse')
def greenhouse_source(access_token: Optional[str] = dlt.secrets.value) -> Any:
    config: RESTAPIConfig = {
        'client': {
            'base_url': 'http://127.0.0.1:5000/',
            'auth': None,
        },
        'resource_defaults': {
            'primary_key': 'id',
            'write_disposition': 'merge',
        },
        'resources': [
            {
                'name': 'applications',
                'primary_key': 'candidate_id',
                'endpoint': {
                    'path': 'applications',
                },
            },
            {
                'name': 'approvals',
                'primary_key': ['id', 'created_at'],
                'endpoint': {
                    'path': 'approvals',
                },
            },
            {
                'name': 'candidates',
                'endpoint': {
                    'path': 'candidates',
                },
            },
        ],
    }

    yield from rest_api_resources(config)


def load_greenhouse() -> None:
    pipeline = dlt.pipeline(
        pipeline_name='rest_api_greenhouse',
        destination='motherduck',
        dataset_name='greenhouse_raw',
    )

    load_info = pipeline.run(greenhouse_source())
    print(load_info)

if __name__ == '__main__':
    load_greenhouse()
