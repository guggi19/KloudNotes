## Architecture

Frontend (PWA)
Firebase Authentication  →  User Management
Firebase Firestore        →  Realtime Notes / Metadata
Firebase Storage           →  File Attachments / Images
Firebase Hosting           →  Static Deployment (Serverless)

Frontend Stack
| Layer                     | Technology                                                                   | Purpose                                 |
| ------------------------- | ---------------------------------------------------------------------------- | --------------------------------------- |
| **Framework**             | [Next.js](https://nextjs.org)                                                | Web app with PWA support                |
| **Editor**                | [CodeMirror 6](https://codemirror.net)                                       | Markdown                                |
| **UI**                    | [Tailwind CSS](https://tailwindcss.com) + [shadcn/ui](https://ui.shadcn.com) | Clean and responsive design             |
| **Offline Storage**       | [IndexedDB (Dexie.js)](https://dexie.org)                                    | Local-first data caching                |
| **State Management**      | Svelte stores / Zustand / Redux Toolkit                                      | Reactive global state                   |
| **Graph View (optional)** | [Cytoscape.js](https://js.cytoscape.org/)                                    | Visualize note connections              |
