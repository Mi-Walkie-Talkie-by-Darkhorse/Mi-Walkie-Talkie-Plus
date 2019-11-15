.class public Lcom/mi/mimsgsdk/log/upload/LogLocation;
.super Ljava/lang/Object;
.source "LogLocation.java"


# instance fields
.field private mFileFilter:Ljava/io/FileFilter;

.field private mRootDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/LogLocation;->mRootDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/mimsgsdk/log/upload/LogLocation;->mFileFilter:Ljava/io/FileFilter;

    return-void
.end method


# virtual methods
.method public getFileFilter()Ljava/io/FileFilter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogLocation;->mFileFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method public getRootDir()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogLocation;->mRootDir:Ljava/lang/String;

    return-object v0
.end method
