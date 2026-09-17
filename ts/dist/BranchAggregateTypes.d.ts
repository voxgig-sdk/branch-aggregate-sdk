export interface Analytics {
    aggregation?: string;
    code?: number;
    data_source: string;
    dimensions: any[];
    enable_install_calculation?: boolean;
    end_date: string;
    filters?: Record<string, any>;
    granularity?: string;
    id?: string;
    job_id?: string;
    start_date: string;
    status_url?: string;
}
export interface AnalyticsLoadMatch {
    id: string;
    app_id: string;
    format: string;
    limit: number;
}
export interface AnalyticsCreateData {
    format: string;
    limit: number;
    aggregation?: string;
    code?: number;
    data_source: string;
    dimensions: any[];
    enable_install_calculation?: boolean;
    end_date: string;
    filters?: Record<string, any>;
    granularity?: string;
    id?: string;
    job_id?: string;
    start_date: string;
    status_url?: string;
}
