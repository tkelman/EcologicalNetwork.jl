module TestConnectance
  using Base.Test
  using EcologicalNetwork

  # Generate some data

  A = [0.0 0.1 0.0; 0.2 0.0 0.2; 0.4 0.5 0.0]

  @test_approx_eq links(A) 1.4
  @test_approx_eq links_var(A) 0.9
  @test_approx_eq connectance(A) 1.4 / 9.0
  @test_approx_eq connectance_var(A) 0.011111111111111111111

end
