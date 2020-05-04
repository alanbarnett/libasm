void	ft_swap_pointers(int *a, int *b);
int		ft_max(int a, int b);

int	main()
{
	int	a;
	int	b;

	a = 5;
	b = 15;
	ft_swap_pointers(&a, &b);
	return (ft_max(a, b));
}
