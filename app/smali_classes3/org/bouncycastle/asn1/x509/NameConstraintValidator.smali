.class public interface abstract Lorg/bouncycastle/asn1/x509/NameConstraintValidator;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation
.end method

.method public abstract intersectEmptyPermittedSubtree(I)V
.end method

.method public abstract intersectPermittedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method

.method public abstract intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
.end method
