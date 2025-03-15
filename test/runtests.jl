using Test, Aqua, LibAwsHTTPFork, LibAwsIO, LibAwsCompression, LibAwsCommon

@testset "LibAwsHTTPFork" begin
    @testset "aqua" begin
        Aqua.test_all(LibAwsHTTPFork, ambiguities=false)
        Aqua.test_ambiguities(LibAwsHTTPFork)
    end
    @testset "basic usage to test the library loads" begin
        alloc = aws_default_allocator() # important! this shouldn't need to be qualified! if we generate a definition for it in LibAwsHTTP that is a bug.
        aws_http_library_init(alloc)
    end
end
