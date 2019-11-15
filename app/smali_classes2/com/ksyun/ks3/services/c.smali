.class public Lcom/ksyun/ks3/services/c;
.super Ljava/lang/Object;
.source "AuthResult.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksyun/ks3/services/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksyun/ks3/services/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/c;->b:Ljava/lang/String;

    return-object v0
.end method
