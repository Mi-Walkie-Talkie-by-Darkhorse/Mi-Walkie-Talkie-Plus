.class Lcom/ifengyu/intercom/p/j0$b;
.super Lcom/qmuiteam/qmui/span/d;
.source "UserPrivacyReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/p/j0;->m(Ljava/lang/String;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/ifengyu/intercom/p/j0$b;->k:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/span/d;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/p/j0$b;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/j/b;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/j/c;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/j/c;->c(Ljava/lang/String;)V

    return-void
.end method
