package org.bouncycastle.crypto.params;

public class DHKeyParameters extends AsymmetricKeyParameter {
    private DHParameters params;

    protected DHKeyParameters(boolean z, DHParameters dHParameters) {
        super(z);
        this.params = dHParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHKeyParameters)) {
            return false;
        }
        DHKeyParameters dHKeyParameters = (DHKeyParameters) obj;
        return this.params == null ? dHKeyParameters.getParameters() == null : this.params.equals(dHKeyParameters.getParameters());
    }

    public DHParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        int i = isPrivate() ? 0 : 1;
        return this.params != null ? i ^ this.params.hashCode() : i;
    }
}
