.class public Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GoogleMapDownloadDefinitionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:[I

.field private B:[Ljava/lang/String;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/view/View;

.field private E:Ljava/lang/String;

.field private F:I

.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:[Lorg/osmdroid/util/GeoPoint;

.field private q:[Landroid/widget/CheckBox;

.field private r:Lcom/ifengyu/intercom/greendao/dao/a$a;

.field private s:Lcom/ifengyu/intercom/greendao/dao/b;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    new-array v0, v1, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->v:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->F:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/widget/CheckBox;)V
    .locals 5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->F:I

    return v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f0901b2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x12

    :goto_0
    if-lt v0, v8, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v1, v5

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v4, v6

    invoke-static {v3, v4, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_1
    if-lt v0, v8, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v1, v6

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v4, v6

    invoke-static {v3, v4, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    :goto_2
    if-lt v0, v8, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v1, v7

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v4, v6

    invoke-static {v3, v4, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    return v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/a$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Lcom/ifengyu/intercom/greendao/dao/a$a;

    return-object v0
.end method


# virtual methods
.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$3;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090221

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/a$a;

    const-string v1, "mitalki_db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/greendao/dao/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Lcom/ifengyu/intercom/greendao/dao/a$a;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Lcom/ifengyu/intercom/greendao/dao/a$a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/a$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/a;->a()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget v6, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    if-nez v6, :cond_5

    const/16 v6, 0x12

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:[I

    iget v8, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    iget v11, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->E:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/ifengyu/intercom/greendao/bean/a;-><init>(Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->insert(Ljava/lang/Object;)J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Lcom/ifengyu/intercom/greendao/dao/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/a$a;->close()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const/16 v6, 0x10

    goto :goto_1

    :cond_6
    const/16 v6, 0x11

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0900cd

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0901fe

    new-instance v2, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000fb -> :sswitch_4
        0x7f1000fc -> :sswitch_0
        0x7f1000fd -> :sswitch_0
        0x7f1000ff -> :sswitch_1
        0x7f100100 -> :sswitch_1
        0x7f100102 -> :sswitch_2
        0x7f100103 -> :sswitch_2
        0x7f10033c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c()V

    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_init_points"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "off_map_downloaded_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/util/ArrayList;

    array-length v0, v3

    new-array v0, v0, [Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d:[Lorg/osmdroid/util/GeoPoint;

    aget-object v0, v3, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d()V

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$1;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:[Landroid/widget/CheckBox;

    array-length v3, v1

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method
