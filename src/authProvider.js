import { supabaseClient } from './supabaseClient';

export const authProvider = {
  login: async ({ username, password }) => {
    const { data, error } = await supabaseClient.auth.signInWithPassword({
      email: username,
      password,
    });
    if (error) throw new Error(error.message);
    localStorage.setItem('user', JSON.stringify(data.user));
    return Promise.resolve();
  },
  logout: async () => {
    await supabaseClient.auth.signOut();
    localStorage.removeItem('user');
    return Promise.resolve();
  },
  checkError: (error) => {
    if (error?.status === 401 || error?.status === 403) {
      localStorage.removeItem('user');
      return Promise.reject();
    }
    return Promise.resolve();
  },
  checkAuth: () => {
    return localStorage.getItem('user') ? Promise.resolve() : Promise.reject();
  },
  getPermissions: () => {
    const user = JSON.parse(localStorage.getItem('user'));
    // You can fetch role from Employee table using user.id
    return Promise.resolve(user?.role || 'user');
  },
  getIdentity: async () => {
    const user = JSON.parse(localStorage.getItem('user'));
    return Promise.resolve({ id: user.id, fullName: user.email });
  },
};