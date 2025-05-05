# Technical Specification: Social Graph Web Application

## 1. Project Overview
- Web application for visualizing social connections
- Displays user profiles with nicknames and emails in graph format
- Authentication via email/password or Google OAuth

## 2. Technical Requirements

### Frontend
- Framework: Next.js (TypeScript)
- UI Components: shadcn/ui
- Styling: Tailwind CSS
- Package Manager: pnpm

### Backend & Authentication
- Platform: Supabase
- Authentication methods:
  - Email/password
  - Google OAuth

### Hosting
- Platform: Vercel

## 3. Core Features
- User registration and authentication
- Social graph visualization showing:
  - Profile pictures
  - Nicknames
  - Email addresses
- Connection display between users

## 4. Data Structure
- User profiles stored in Supabase database
- Social connections stored as relationships in database

## 5. Performance Requirements
- Handle typical social network usage patterns
- Support real-time updates of social graph

## 6. Security Requirements
- Secure authentication via Supabase
- Data protection for user information
- Rate limiting for API calls

## 7. Development Timeline
[To be determined based on project scope]

## 8. Proposed Improvements

### Database Improvements
1. Add password_hash field to users table
2. Add email_verified field
3. Add role field
4. Create index for email field
5. Add length constraints for text fields

### Security Improvements
1. Move sensitive keys to environment variables
2. Add input validation
3. Implement rate limiting

### Frontend Improvements
1. Add missing dependencies:
   - shadcn/ui
   - Tailwind CSS
   - Google OAuth packages
2. Implement TypeScript types for Supabase
3. Add error handling

### Backend Improvements
1. Implement proper authentication flows
2. Add email verification
3. Add password recovery