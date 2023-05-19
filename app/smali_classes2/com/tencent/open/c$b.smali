.class Lcom/tencent/open/c$b;
.super Lcom/tencent/open/a$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/c;


# direct methods
.method private constructor <init>(Lcom/tencent/open/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/open/c$b;->a:Lcom/tencent/open/c;

    invoke-direct {p0}, Lcom/tencent/open/a$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/c;Lcom/tencent/open/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/open/c$b;-><init>(Lcom/tencent/open/c;)V

    return-void
.end method
