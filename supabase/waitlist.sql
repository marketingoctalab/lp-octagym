-- Tabela da lista de espera (LP OctaGym x Ironberg)
-- Rode no Supabase SQL Editor do projeto.
create table if not exists public.waitlist (
  id         uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  nome       text not null,
  telefone   text not null,
  email      text not null,
  negocio    text,
  unidades   text,
  origem     text not null default 'lp-ironberg'
);

alter table public.waitlist enable row level security;

-- Permite o formulário público (anon) inserir; ninguém lê via anon (sem policy de select).
drop policy if exists "anon insert waitlist" on public.waitlist;
create policy "anon insert waitlist"
  on public.waitlist for insert
  to anon, authenticated
  with check (true);
