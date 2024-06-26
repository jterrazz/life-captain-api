import { mock } from 'jest-mock-extended';
import { RouterContext } from 'koa-router';

import { defaultSerializerKoa } from '../default-serializer.koa.js';

describe('defaultSerializerKoa()', () => {
    test('return 200 status code', () => {
        // Given
        const context = mock<RouterContext>();

        // When
        defaultSerializerKoa(context);

        // Then
        expect(context.status).toBe(200);
    });
});
