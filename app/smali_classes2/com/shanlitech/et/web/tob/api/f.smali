.class public Lcom/shanlitech/et/web/tob/api/f;
.super Lcom/shanlitech/et/web/tob/api/b;
.source "GroupServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/tob/api/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/shanlitech/et/web/tob/api/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shanlitech/et/web/tob/api/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/f;-><init>()V

    return-void
.end method

.method public static f()Lcom/shanlitech/et/web/tob/api/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/f$a;->a:Lcom/shanlitech/et/web/tob/api/f;

    return-object v0
.end method


# virtual methods
.method protected e(Lretrofit2/Retrofit;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/tob/api/d;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/d;

    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/f;->a:Lcom/shanlitech/et/web/tob/api/d;

    return-void
.end method
