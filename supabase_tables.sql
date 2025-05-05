-- Users table
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT NOT NULL UNIQUE,
  nickname TEXT NOT NULL,
  profile_picture TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Connections table
CREATE TABLE connections (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user1_id UUID REFERENCES users(id) ON DELETE CASCADE,
  user2_id UUID REFERENCES users(id) ON DELETE CASCADE,
  connection_type TEXT DEFAULT 'friend',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  CONSTRAINT no_self_connections CHECK (user1_id != user2_id),
  CONSTRAINT unique_connection UNIQUE (user1_id, user2_id)
);

-- Indexes for better performance
CREATE INDEX idx_connections_user1 ON connections(user1_id);
CREATE INDEX idx_connections_user2 ON connections(user2_id);