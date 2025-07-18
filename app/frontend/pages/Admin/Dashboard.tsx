import { Head } from "@inertiajs/react";
import { useState } from "react";

import cs from "./Dashboard.module.css";

export default function InertiaExample({ name }: { name: string }) {
  const [count, setCount] = useState(0);

  return (
    <>
      <Head title="Inertia + Vite Ruby + React Example" />

      <div className={cs.root}>
        <h1 className={cs.h1}>Admin {name}</h1>

        <div className="card">
          <p>{count}</p>
          <button className={cs.button} onClick={() => setCount((count) => count + 1)}>
            increase count
          </button>
          <button className={cs.button} onClick={() => setCount((count) => count - 1)}>
            decrease count
          </button>
        </div>
      </div>
    </>
  );
}
