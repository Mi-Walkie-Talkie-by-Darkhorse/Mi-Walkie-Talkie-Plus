.class public Lcom/ifengyu/intercom/ui/MainActivity$f;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$f;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$f;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$f;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$f;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->t:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
