.class public Lcom/ifengyu/intercom/lite/d/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ifengyu/intercom/lite/d/g/a;


# direct methods
.method public static a()Lcom/ifengyu/intercom/lite/d/g/a;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/lite/d/e;->a:Lcom/ifengyu/intercom/lite/d/g/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/lite/d/d;->a()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/d/g/a;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/d/g/a;

    sput-object v0, Lcom/ifengyu/intercom/lite/d/e;->a:Lcom/ifengyu/intercom/lite/d/g/a;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/lite/d/e;->a:Lcom/ifengyu/intercom/lite/d/g/a;

    return-object v0
.end method
