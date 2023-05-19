.class public Lcom/ifengyu/intercom/n/b;
.super Ljava/lang/Object;
.source "AppServiceClient.java"


# static fields
.field private static a:Lcom/ifengyu/intercom/n/a;


# direct methods
.method public static a()Lcom/ifengyu/intercom/n/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/n/b;->a:Lcom/ifengyu/intercom/n/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/b;->d()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/n/a;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/n/a;

    sput-object v0, Lcom/ifengyu/intercom/n/b;->a:Lcom/ifengyu/intercom/n/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/n/b;->a:Lcom/ifengyu/intercom/n/a;

    return-object v0
.end method
