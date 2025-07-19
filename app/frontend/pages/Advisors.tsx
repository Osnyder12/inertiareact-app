import { usePage } from "@inertiajs/react";
import React from "react";

interface Advisor {
  id: number;
  name: string;
  title: string;
}

interface PageProps {
  advisors: Advisor[];
  [key: string]: any;
}

const Advisors: React.FC = () => {
  const { advisors } = usePage<PageProps>().props;

  return (
    <div>
      <h2 className="text-2xl font-semibold mb-4">Advisors</h2>
      {advisors.length === 0 ? (
        <p>No advisors found.</p>
      ) : (
        <ul className="list-disc pl-6">
          {advisors.map((advisor) => (
            <li key={advisor.id}>
              <strong>{advisor.name}</strong> — {advisor.title}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
};

export default Advisors;
