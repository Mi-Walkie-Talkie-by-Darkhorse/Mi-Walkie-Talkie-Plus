.class Lcom/mi/milinkforgame/sdk/util/PRNGFixes$LinuxPRNGSecureRandomProvider;
.super Ljava/security/Provider;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/util/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxPRNGSecureRandomProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "LinuxPRNG"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "A Linux-specific random number provider that uses /dev/urandom"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SecureRandom.SHA1PRNG"

    const-class v1, Lcom/mi/milinkforgame/sdk/util/PRNGFixes$LinuxPRNGSecureRandom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/util/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/util/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
