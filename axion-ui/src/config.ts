declare global {
  interface Window {
    __CONFIG__: {
      API_BASE: string;
    };
  }
}

export const API_BASE = window.__CONFIG__.API_BASE;