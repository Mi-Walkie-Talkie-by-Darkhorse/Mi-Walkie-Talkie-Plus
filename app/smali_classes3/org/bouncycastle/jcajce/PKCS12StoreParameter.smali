.class public Lorg/bouncycastle/jcajce/PKCS12StoreParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final forDEREncoding:Z

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CZ)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isForDEREncoding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    return v0
.end method
