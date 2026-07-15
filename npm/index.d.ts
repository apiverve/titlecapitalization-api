declare module '@apiverve/titlecapitalization' {
  export interface titlecapitalizationOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface titlecapitalizationResponse {
    status: string;
    error: string | null;
    data: TitleCaseConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TitleCaseConverterData {
      style: null | string;
      text:  null | string;
  }

  export default class titlecapitalizationWrapper {
    constructor(options: titlecapitalizationOptions);

    execute(callback: (error: any, data: titlecapitalizationResponse | null) => void): Promise<titlecapitalizationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: titlecapitalizationResponse | null) => void): Promise<titlecapitalizationResponse>;
    execute(query?: Record<string, any>): Promise<titlecapitalizationResponse>;
  }
}
