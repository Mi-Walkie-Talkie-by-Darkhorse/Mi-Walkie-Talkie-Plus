.class public Lc/b/b/c/a/c;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lc/b/b/c/a/b;


# direct methods
.method public constructor <init>(Lc/b/b/c/a/b;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lc/b/b/c/a/c;->c:Lc/b/b/c/a/b;

    iput p2, p0, Lc/b/b/c/a/c;->b:I

    iput-object p3, p0, Lc/b/b/c/a/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lc/b/b/c/a/c;->c:Lc/b/b/c/a/b;

    if-eqz p1, :cond_0

    iget v0, p0, Lc/b/b/c/a/c;->b:I

    iget-object v1, p0, Lc/b/b/c/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/b/b/c/a/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "VMS_IDLG_SDK_Observer"

    const-string v0, "mIdentifierIdClient is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
