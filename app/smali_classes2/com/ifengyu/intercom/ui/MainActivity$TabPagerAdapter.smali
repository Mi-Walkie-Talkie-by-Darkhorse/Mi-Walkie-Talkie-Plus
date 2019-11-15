.class public Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$TabPagerAdapter;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
