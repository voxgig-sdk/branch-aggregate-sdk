import { BranchAggregateEntityBase } from '../BranchAggregateEntityBase';
import type { BranchAggregateSDK } from '../BranchAggregateSDK';
import type { Control } from '../types';
import type { Analytics, AnalyticsLoadMatch, AnalyticsCreateData } from '../BranchAggregateTypes';
declare class AnalyticsEntity extends BranchAggregateEntityBase<Analytics> {
    constructor(client: BranchAggregateSDK, entopts: any);
    make(this: AnalyticsEntity): AnalyticsEntity;
    load(this: any, reqmatch?: AnalyticsLoadMatch, ctrl?: Control): Promise<AnalyticsEntity>;
    create(this: any, reqdata?: AnalyticsCreateData, ctrl?: Control): Promise<AnalyticsEntity>;
}
export { AnalyticsEntity };
