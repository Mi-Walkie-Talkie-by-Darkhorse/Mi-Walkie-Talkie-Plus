.class public Lcom/shanlitech/et/web/tob/api/m$b;
.super Ljava/lang/Object;
.source "UserServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/web/tob/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/shanlitech/et/web/tob/api/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/tob/api/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shanlitech/et/web/tob/api/m;-><init>(Lcom/shanlitech/et/web/tob/api/m$a;)V

    sput-object v0, Lcom/shanlitech/et/web/tob/api/m$b;->a:Lcom/shanlitech/et/web/tob/api/m;

    return-void
.end method
