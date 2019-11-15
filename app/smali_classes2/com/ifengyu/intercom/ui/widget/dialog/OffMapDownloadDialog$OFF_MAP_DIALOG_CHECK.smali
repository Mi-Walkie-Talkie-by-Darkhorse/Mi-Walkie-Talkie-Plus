.class public final enum Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;
.super Ljava/lang/Enum;
.source "OffMapDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OFF_MAP_DIALOG_CHECK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

.field public static final enum b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

.field private static final synthetic c:[Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    const-string v1, "STOP_OR_CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    const-string v1, "RENAME"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->c:[Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->c:[Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    return-object v0
.end method
