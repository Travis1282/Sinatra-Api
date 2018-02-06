CREATE DATABASE digits;

\c digits

CREATE TABLE charicters(
  id SERIAL PRIMARY KEY,
  numerics VARCHAR(32),
  alpha_numerics VARCHAR(32),
  special_charicters VARCHAR(32)
);

