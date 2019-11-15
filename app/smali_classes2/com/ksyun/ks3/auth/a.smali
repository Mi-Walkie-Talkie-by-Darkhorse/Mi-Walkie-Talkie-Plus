.class public Lcom/ksyun/ks3/auth/a;
.super Ljava/lang/Object;
.source "AuthEvent.java"


# instance fields
.field public a:Lcom/ksyun/ks3/auth/AuthEventCode;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/auth/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/ksyun/ks3/auth/AuthEventCode;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/auth/a;->a:Lcom/ksyun/ks3/auth/AuthEventCode;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/auth/a;->b:Ljava/lang/String;

    return-void
.end method
