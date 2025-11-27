"use client";

import { useState, useEffect } from "react";

export default function Page() {
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function getMythicalcreatures() {
      try {
        const apiHost = process.env.NEXT_PUBLIC_API_HOST;
        const res = await fetch(`${apiHost}/mythicalcreatures`, { cache: "no-store" });
        if (!res.ok) throw new Error("Failed to fetch");
        const data = await res.json();
        setRows(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    }

    getMythicalcreatures();
  }, []);

  if (loading) {
    return (
      <main className="container">
        <div className="empty">Loading...</div>
      </main>
    );
  }

  if (error) {
    return (
      <main className="container">
        <div className="empty">Error: {error}</div>
      </main>
    );
  }

  return (
    <main className="container">
      <header className="header">
        <h1 className="title">Mythical Creatures</h1>
        <p className="subtitle">Pema Lhanzey Zangmo 6708370</p>
      </header>

      {!rows || rows.length === 0 ? (
        <div className="empty">No creatures found.</div>
      ) : (
        <section className="grid" aria-live="polite">
          {rows.map((x) => (
            <article key={x.id} className="card" tabIndex={0}>
              {x.coverimage && (
                <div className="media">
                  <img
                    src={x.coverimage}
                    alt={x.name}
                    className="img"
                    loading="lazy"
                    decoding="async"
                  />
                </div>
              )}
              <div className="body">
                <h3 className="card-title">{x.name}</h3>
                {x.detail && <p className="detail">{x.detail}</p>}
                {x.countryoforigin && (
                  <p className="meta">
                    <strong>Origin:</strong> {x.countryoforigin}
                  </p>
                )}
              </div>
            </article>
          ))}
        </section>
      )}
    </main>
  );
}

