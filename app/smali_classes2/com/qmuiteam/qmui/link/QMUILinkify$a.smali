.class final Lcom/qmuiteam/qmui/link/QMUILinkify$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/link/QMUILinkify$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/regex/Pattern;
    .locals 1

    invoke-static {}, Lcom/qmuiteam/qmui/link/QMUILinkify$k;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
