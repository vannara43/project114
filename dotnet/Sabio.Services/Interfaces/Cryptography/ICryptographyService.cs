namespace Sabio.Services.Cryptography
{
    public interface ICryptographyService
    {
        string Encrypt(string plaintext, string purpose = "");

        string GenerateRandomString(int length);

        string Hash(string message, string messHashKey);

        string Hash(string original, string salt, int iterations = 1);

        bool TryDecrypt(string encodedCiphertext, out string plaintext);

        bool TryDecrypt(string encodedCiphertext, string purpose, out string plaintext);
    }
}