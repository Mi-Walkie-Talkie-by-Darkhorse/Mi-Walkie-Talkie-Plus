.class public final Lcom/amap/api/col/sl/cc;
.super Lcom/amap/api/col/sl/cd;
.source "Base64EncryptProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/cd;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/cd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/cd;-><init>(Lcom/amap/api/col/sl/cd;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 1

    invoke-static {p1}, Lcom/amap/api/col/sl/bv;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ca;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
