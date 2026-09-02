.class public final Lcom/secaccu/clock/SiteStore;
.super Ljava/lang/Object;
.source "SiteStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/SiteStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSiteStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SiteStore.kt\ncom/secaccu/clock/SiteStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n288#2,2:117\n350#2,7:120\n819#2:127\n847#2,2:128\n1#3:119\n*S KotlinDebug\n*F\n+ 1 SiteStore.kt\ncom/secaccu/clock/SiteStore\n*L\n25#1:117,2\n40#1:120,7\n52#1:127\n52#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000f2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J \u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000f2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f2\u0006\u0010\u0017\u001a\u00020\u000cJ\u0016\u0010\u0018\u001a\u00020\u00112\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0002J \u0010\u001a\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cR\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/secaccu/clock/SiteStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "oldFavorites",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "prefs",
        "add",
        "Lcom/secaccu/clock/TimeSite;",
        "name",
        "",
        "url",
        "all",
        "",
        "ensureSeeded",
        "",
        "read",
        "key",
        "readFrom",
        "store",
        "remove",
        "id",
        "save",
        "sites",
        "update",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/secaccu/clock/SiteStore$Companion;

.field private static final KEY:Ljava/lang/String; = "catalog"

.field private static final OLD_KEY:Ljava/lang/String; = "sites"

.field private static final OLD_PREFS:Ljava/lang/String; = "secaccu_favorites"

.field private static final PREFS:Ljava/lang/String; = "secaccu_sites"


# instance fields
.field private final oldFavorites:Landroid/content/SharedPreferences;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/secaccu/clock/SiteStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/secaccu/clock/SiteStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/secaccu/clock/SiteStore;->Companion:Lcom/secaccu/clock/SiteStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "secaccu_sites"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/SiteStore;->prefs:Landroid/content/SharedPreferences;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "secaccu_favorites"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/SiteStore;->oldFavorites:Landroid/content/SharedPreferences;

    .line 8
    return-void
.end method

.method private final ensureSeeded()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/secaccu/clock/SiteStore;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "catalog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/SiteStore;->oldFavorites:Landroid/content/SharedPreferences;

    const-string v1, "oldFavorites"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sites"

    invoke-direct {p0, v0, v1}, Lcom/secaccu/clock/SiteStore;->readFrom(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "favorites":Ljava/util/List;
    :cond_1
    sget-object v1, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v1, v0}, Lcom/secaccu/clock/Sites;->combined(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/secaccu/clock/SiteStore;->save(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method private final read(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/secaccu/clock/SiteStore;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/secaccu/clock/SiteStore;->readFrom(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final readFrom(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "store"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-interface/range {p1 .. p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "[]"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    move-object v3, v0

    .line 82
    .local v3, "raw":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/secaccu/clock/SiteStore;

    .line 119
    .local v0, "$this$readFrom_u24lambda_u247":Lcom/secaccu/clock/SiteStore;
    const/4 v4, 0x0

    .line 82
    .local v4, "$i$a$-runCatching-SiteStore$readFrom$array$1":I
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$readFrom_u24lambda_u247":Lcom/secaccu/clock/SiteStore;
    .end local v4    # "$i$a$-runCatching-SiteStore$readFrom$array$1":I
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Lorg/json/JSONArray;

    .line 83
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v4, "sites":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_9

    .line 85
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_3

    move-object/from16 v20, v0

    goto/16 :goto_4

    .line 86
    .local v7, "obj":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "optString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "url":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "name":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_8

    .line 89
    const-string v10, "group"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 119
    const/4 v10, 0x0

    .line 89
    .local v10, "$i$a$-ifBlank-SiteStore$readFrom$group$1":I
    nop

    .end local v10    # "$i$a$-ifBlank-SiteStore$readFrom$group$1":I
    const-string v10, "\uc2dc\uac04 \uc11c\ubc84"

    :cond_5
    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/String;

    .line 90
    .local v19, "group":Ljava/lang/String;
    move-object v15, v4

    check-cast v15, Ljava/util/Collection;

    .line 91
    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 119
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-ifBlank-SiteStore$readFrom$1":I
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "site-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v10    # "$i$a$-ifBlank-SiteStore$readFrom$1":I
    :cond_6
    const-string v11, "ifBlank(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 92
    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 119
    const/4 v10, 0x0

    .line 92
    .local v10, "$i$a$-ifBlank-SiteStore$readFrom$2":I
    sget-object v12, Lcom/secaccu/clock/SiteStore;->Companion:Lcom/secaccu/clock/SiteStore$Companion;

    invoke-virtual {v12, v8}, Lcom/secaccu/clock/SiteStore$Companion;->hostLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "$i$a$-ifBlank-SiteStore$readFrom$2":I
    :cond_7
    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    .line 93
    nop

    .line 94
    sget-object v10, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v10, v8}, Lcom/secaccu/clock/Sites;->kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;

    move-result-object v14

    .line 95
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    new-instance v13, Lcom/secaccu/clock/TimeSite;

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    move-object v10, v13

    move-object/from16 v20, v0

    move-object v0, v13

    .end local v0    # "array":Lorg/json/JSONArray;
    .local v20, "array":Lorg/json/JSONArray;
    move-object v13, v8

    move-object v1, v15

    move-object/from16 v15, v19

    invoke-direct/range {v10 .. v18}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 88
    .end local v19    # "group":Ljava/lang/String;
    .end local v20    # "array":Lorg/json/JSONArray;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_8
    move-object/from16 v20, v0

    .line 84
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .restart local v20    # "array":Lorg/json/JSONArray;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v20

    goto/16 :goto_2

    .end local v20    # "array":Lorg/json/JSONArray;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_9
    move-object/from16 v20, v0

    .line 98
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .restart local v20    # "array":Lorg/json/JSONArray;
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final save(Ljava/util/List;)V
    .locals 6
    .param p1, "sites"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/secaccu/clock/TimeSite;

    .line 66
    .local v2, "site":Lcom/secaccu/clock/TimeSite;
    nop

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    const-string v4, "name"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    const-string v4, "url"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    const-string v4, "group"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 74
    .end local v2    # "site":Lcom/secaccu/clock/TimeSite;
    :cond_0
    iget-object v1, p0, Lcom/secaccu/clock/SiteStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "catalog"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSite;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v0, p2}, Lcom/secaccu/clock/Sites;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "normalized":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/secaccu/clock/SiteStore;->all()Ljava/util/List;

    move-result-object v10

    .line 25
    .local v10, "current":Ljava/util/List;
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/secaccu/clock/TimeSite;

    .local v5, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v6, 0x0

    .line 25
    .local v6, "$i$a$-firstOrNull-SiteStore$add$1":I
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 117
    .end local v5    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v6    # "$i$a$-firstOrNull-SiteStore$add$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 118
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 25
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v4, Lcom/secaccu/clock/TimeSite;

    if-eqz v4, :cond_2

    move-object v1, v4

    .line 119
    .local v1, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-let-SiteStore$add$2":I
    return-object v1

    .line 26
    .end local v1    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v2    # "$i$a$-let-SiteStore$add$2":I
    :cond_2
    nop

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "site-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const/4 v1, 0x0

    .line 28
    .local v1, "$i$a$-ifBlank-SiteStore$add$site$1":I
    sget-object v3, Lcom/secaccu/clock/SiteStore;->Companion:Lcom/secaccu/clock/SiteStore$Companion;

    invoke-virtual {v3, v0}, Lcom/secaccu/clock/SiteStore$Companion;->hostLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-ifBlank-SiteStore$add$site$1":I
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 29
    nop

    .line 30
    sget-object v1, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v1, v0}, Lcom/secaccu/clock/Sites;->kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;

    move-result-object v5

    .line 31
    nop

    .line 26
    new-instance v11, Lcom/secaccu/clock/TimeSite;

    const-string v6, "\ub0b4 \uc11c\ubc84"

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v11

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .local v1, "site":Lcom/secaccu/clock/TimeSite;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v3, v10

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/secaccu/clock/SiteStore;->save(Ljava/util/List;)V

    .line 34
    return-object v1
.end method

.method public final all()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/secaccu/clock/SiteStore;->ensureSeeded()V

    .line 14
    const-string v0, "catalog"

    invoke-direct {p0, v0}, Lcom/secaccu/clock/SiteStore;->read(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 15
    .local v0, "sites":Ljava/util/List;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v1, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v1}, Lcom/secaccu/clock/Sites;->getBuiltin()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/secaccu/clock/SiteStore;->save(Ljava/util/List;)V

    .line 17
    sget-object v1, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v1}, Lcom/secaccu/clock/Sites;->getBuiltin()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/secaccu/clock/SiteStore;->all()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 127
    .local v1, "$i$f$filterNot":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$filterNotTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/secaccu/clock/TimeSite;

    .local v7, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v8, 0x0

    .line 52
    .local v8, "$i$a$-filterNot-SiteStore$remove$remaining$1":I
    invoke-virtual {v7}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 128
    .end local v7    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v8    # "$i$a$-filterNot-SiteStore$remove$remaining$1":I
    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNotTo":I
    check-cast v2, Ljava/util/List;

    .line 127
    nop

    .line 52
    .end local v0    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterNot":I
    move-object v0, v2

    .line 53
    .local v0, "remaining":Ljava/util/List;
    invoke-direct {p0, v0}, Lcom/secaccu/clock/SiteStore;->save(Ljava/util/List;)V

    .line 54
    return-object v0
.end method

.method public final update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSite;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v0, p3}, Lcom/secaccu/clock/Sites;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "normalized":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/secaccu/clock/SiteStore;->all()Ljava/util/List;

    move-result-object v10

    .line 40
    .local v10, "current":Ljava/util/List;
    move-object v1, v10

    .local v1, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$f$indexOfFirst":I
    const/4 v3, 0x0

    .line 121
    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/secaccu/clock/TimeSite;

    .local v6, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v7, 0x0

    .line 40
    .local v7, "$i$a$-indexOfFirst-SiteStore$update$index$1":I
    invoke-virtual {v6}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 122
    .end local v6    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v7    # "$i$a$-indexOfFirst-SiteStore$update$index$1":I
    if-eqz v6, :cond_0

    .line 123
    goto :goto_1

    .line 124
    :cond_0
    nop

    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v4, -0x1

    move v3, v4

    .line 40
    .end local v1    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v2    # "$i$f$indexOfFirst":I
    .end local v3    # "index$iv":I
    :goto_1
    move v11, v3

    .line 41
    .local v11, "index":I
    if-gez v11, :cond_2

    const/4 v1, 0x0

    return-object v1

    .line 42
    :cond_2
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/secaccu/clock/TimeSite;

    .line 43
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-ifBlank-SiteStore$update$updated$1":I
    sget-object v3, Lcom/secaccu/clock/SiteStore;->Companion:Lcom/secaccu/clock/SiteStore$Companion;

    invoke-virtual {v3, v0}, Lcom/secaccu/clock/SiteStore$Companion;->hostLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-ifBlank-SiteStore$update$updated$1":I
    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 44
    nop

    .line 45
    sget-object v2, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v2, v0}, Lcom/secaccu/clock/Sites;->kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;

    move-result-object v5

    .line 42
    const/16 v8, 0x31

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v9}, Lcom/secaccu/clock/TimeSite;->copy$default(Lcom/secaccu/clock/TimeSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;ZILjava/lang/Object;)Lcom/secaccu/clock/TimeSite;

    move-result-object v1

    .line 47
    .local v1, "updated":Lcom/secaccu/clock/TimeSite;
    move-object v2, v10

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 119
    move-object v3, v2

    .local v3, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$a$-also-SiteStore$update$1":I
    invoke-interface {v3, v11, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-also-SiteStore$update$1":I
    invoke-direct {p0, v2}, Lcom/secaccu/clock/SiteStore;->save(Ljava/util/List;)V

    .line 48
    return-object v1
.end method
