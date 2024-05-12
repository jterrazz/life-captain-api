import { Database } from '../../src/ports/database.js';

import container from '../../src/container/container.js';
import Dependency from '../../src/container/dependency.js';

export const databaseContextFactory = () => {
    return container.get<Database>(Dependency.Database);
};
